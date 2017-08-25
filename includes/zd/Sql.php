<?php
namespace zd;
/**
 * Created by PhpStorm.
 * User: zx648
 * Date: 2016/9/24
 * Time: 11:40
 */
class Sql {
    /**
     * @return \cls_mysql
     */
    public static function db() {
        static $db;
        if (empty($db)) {
            $db = $GLOBALS['db'];
        }
        return $db;
    }

    public function __construct($sql = null) {
        $this->sql = $sql;
    }

    public $sql = '';

    public static function addPrefix($table) {
        global $ecs;
        if (strpos($table, $ecs->prefix) === 0) {
            return $table;
        }
        return $ecs->prefix.$table;;
    }

    /**
     *
     * @param string|array $arg
     * @return Sql
     */
    public function select($arg = '*') {
        if (!is_array($arg)) {
            $arg = func_get_args();
        }
        if (count($arg) == 0) {
            $arg = ['*'];
        }
        foreach ($arg as $key => &$item) {
            if (!is_integer($key)) {
                $item .= ' AS '.$key;
            }
        }
        return $this->addSql('SELECT '.implode(', ', $arg));
    }

    public function selectCount($field = '*') {
        return $this->select("COUNT({$field}) AS count");
    }

    /**
     * @param string $table
     * @return Sql
     */
    public function from($table) {
        if (empty($this->sql)) {
            $this->select('*');
        }
        return $this->addSql('FROM '.$this->addPrefix($table));
    }

    /**
     * @param string $arg
     * @return $this
     */
    public function addSql($arg){
        $this->sql .= $arg. ' ';
        return $this;
    }

    /**
     * @param string $arg
     * @return Sql
     */
    public function addKey($arg) {
        $arg = htmlspecialchars($arg);
        return $this->addSql("`$arg`");
    }

    public function addLike($arg) {
        $arg = htmlspecialchars($arg);
        return $this->addSql("LIKE '%$arg%'");
    }

    public function addIn(array $args, $isNot = false) {
        foreach ($args as &$item) {
            $item = htmlspecialchars($item);
        }
        return $this->addSql( ($isNot ? 'NOT ' : '')."IN ('".implode("', '", $args)."')");
    }

    /**
     *
     * @param string $arg
     * @return Sql
     */
    public function addValue($arg) {
        $arg = static::filterValue($arg);
        return $this->addSql("'$arg'");
    }

    public static function filterValue($arg) {
        return addslashes($arg);
    }

    /**
     * @param integer $arg
     * @return Sql
     */
    public function addInt($arg) {
        return $this->addSql(intval($arg));
    }

    /**
     * @param string $arg
     * @param null $con
     * @param null $value
     * @return Sql
     */
    public function where($arg, $con = null, $value = null) {
        if (is_null($con)) {
            return $this->addSql('WHERE '.$arg);
        }
        if (is_null($value)) {
            $value = $con;
            $con = '=';
        }
        if (is_array($value)) {
            return $this->addSql('WHERE '.$arg)->addIn($value);
        }
        return $this->addSql('WHERE '.$arg.$con)->addValue($value);
    }

    /**
     * @param $boolean
     * @param callable $yes
     * @param callable|null $no
     * @return $this
     */
    public function when($boolean, callable $yes, callable $no = null) {
        if ($boolean && is_callable($yes)) {
            call_user_func($yes, $this);
        } elseif (!$boolean && is_callable($no)){
            call_user_func($no, $this);
        }
        return $this;
    }

    /**
     * where 或 having 用
     * @param string $arg
     * @param null $con
     * @param null $value
     * @return Sql
     */
    public function andWhere($arg, $con = null, $value = null) {
        if (is_null($con)) {
            return $this->addSql('AND '.$arg);
        }
        if (is_null($value)) {
            $value = $con;
            $con = '=';
        }
        if (is_array($value)) {
            return $this->addSql('AND '.$arg)->addIn($value);
        }
        return $this->addSql('AND '.$arg.$con)->addValue($value);
    }

    /**
     * where 或 having 用
     * @param string $arg
     * @param null $con
     * @param null $value
     * @return Sql
     */
    public function orWhere($arg, $con = null, $value = null) {
        if (is_null($con)) {
            return $this->addSql('OR '.$arg);
        }
        if (is_null($value)) {
            $value = $con;
            $con = '=';
        }
        if (is_array($value)) {
            return $this->addSql('OR '.$arg)->addIn($value);
        }
        return $this->addSql('OR '.$arg.$con)->addValue($value);
    }

    /**
     * @param string $tag
     * @param string $table
     * @param string $on
     * @return Sql
     */
    public function join($tag, $table, $on) {
        return $this->addSql(strtoupper($tag).' JOIN '.$this->addPrefix($table).' ON '.$on);
    }

    /**
     * @param string $table
     * @param string $on
     * @return Sql
     */
    public function left($table, $on) {
        return $this->join('LEFT', $table, $on);
    }

    /**
     * @param string $table
     * @param string $on
     * @return Sql
     */
    public function right($table, $on) {
        return $this->join('RIGHT', $table, $on);
    }

    /**
     * @param string $table
     * @param string $on
     * @return Sql
     */
    public function inner($table, $on) {
        return $this->join('INNER', $table, $on);
    }

    /**
     * @param string $on
     * @return Sql
     */
    public function on($on) {
        return $this->addSql('ON '.$on);
    }

    public function union($arg) {
        return $this->addSql('UNION '.$arg);
    }

    /**
     * @param array|string $arg
     * @return Sql
     */
    public function group($arg) {
        if (!is_array($arg)) {
            $arg = func_get_args();
        }
        return $this->addSql('GROUP BY '.implode(', ', $arg));
    }

    /**
     * @param string $arg
     * @return Sql
     */
    public function having($arg) {
        return $this->addSql('HAVING '.$arg);
    }

    /**
     * @param string|array $arg
     * @return Sql
     */
    public function order($arg) {
        if (!is_array($arg)) {
            $arg = func_get_args();
        }
        return $this->addSql('ORDER BY '.implode(', ', $arg));
    }

    /**
     * @param int|string|array $offset
     * @param integer $length
     * @return Sql
     */
    public function limit($offset = 1, $length = null) {
        if (is_array($offset)) {
            list($offset, $length) = $offset;
        }
        if (empty($length)) {
            return $this->addSql('LIMIT '.$offset);
        }
        return $this->addSql('LIMIT '.intval($offset). ', '. intval($length));
    }

    /**
     * @param integer $num
     * @return Sql
     */
    public function offset($num) {
        return $this->addSql('OFFSET '.intval($num));
    }

    /**
     * 所有
     * @return array|bool
     */
    public function all() {
        return $this->db()->getAll($this->sql);
    }

    /**
     * 一行
     * @return array|bool
     */
    public function one() {
        return $this->db()->getRow($this->sql, true);
    }

    /**
     * 一行的一列
     * @return bool|string
     */
    public function scalar() {
        return $this->db()->getOne($this->sql, true);
    }

    /**
     *
     * @return bool|resource
     */
    public function query() {
        return $this->db()->query($this->sql);
    }

    /**
     * @return string
     */
    public function __toString() {
        return $this->sql;
    }

    /**
     * @param string $sql
     * @return static
     */
    public static function create($sql = null) {
        return new static($sql);
    }

    /**
     * 新增记录
     *
     * @access public
     *
     * @param string $table
     * @param array $data
     * @param null $sql
     * @return bool|int 返回最后插入的ID,
     */
    public static function insert($table, $data, $sql = null) {
        if (is_string($data) && !empty($sql)) {
            return static::db()->query(sprintf('INSERT INTO %s (%s) %s',
                static::addPrefix($table), $data, (string)$sql));
        }
        $data = array_map('static::filterValue', $data);
        $result =  static::db()->query('INSERT INTO '.static::addPrefix($table).
            ' (`'.implode('`, `', array_keys($data)).'`) VALUES (\''.implode("', '", array_values($data)).'\')');
        if ($result === false) {
            return false;
        }
        return static::db()->insert_id();
    }

    /**
     * INSERT MANY RECORDS
     * @param string $table
     * @param array|string $columns
     * @param array $data
     * @return int
     */
    public static function batchInsert($table, $columns, array $data) {
        $args = array();
        foreach ($data as $item) {
            $arg = array();
            foreach ($item as $value) {
                if (is_null($value)) {
                    $arg[] = 'NULL';
                    continue;
                }
                if (is_bool($value)) {
                    $arg[] = intval($value);
                    continue;
                }
                if (is_string($value)) {
                    $arg[] = "'".addslashes($value)."'";
                    continue;
                }
                if (is_array($value) || is_object($value)) {
                    $arg[] = "'".serialize($value)."'";
                    continue;
                }
                $arg[] = $value;
            }
            $args[] = '(' . implode(', ', $arg) . ')';
        }

        return static::db()->query('INSERT INTO '. static::addPrefix($table) .
            '('. implode(', ', (array)$columns).') VALUES '.implode(', ', $args));
    }

    /**
     * 更新
     * @param $table
     * @param $data
     * @param $where
     * @param string $sql
     * @return bool|resource
     */
    public static function update($table, $data, $where, $sql = '') {
        $args = array();
        foreach ($data as $key => $value) {
            if (is_integer($key)) {
                $args[] = $value;
                continue;
            }
            $value = static::filterValue($value);
            $args[] = "`{$key}` = '{$value}'";
        }
        return static::db()->query(sprintf('UPDATE %s SET %s WHERE %s %s',
            static::addPrefix($table),
            implode(', ', $args),
            static::getWhereSql($where),
            $sql));
    }

    /**
     * 保存
     * @param $table
     * @param $data
     * @param string $idTag
     * @return bool|int
     */
    public static function save($table, $data, $idTag = 'id') {
        $id = 0;
        if (array_key_exists($idTag, $data)) {
            $id = $data[$idTag];
            unset($data[$idTag]);
        }
        if (!empty($id)) {
            $where = sprintf('`%s`=\'%s\'', $idTag, $id);
            static::update($table, $data, $where);
            return $id;
        }
        return static::insert($table, $data);
    }

    /**
     * 获取 条件 sql
     * @param $where
     * @return string
     */
    protected static function getWhereSql($where) {
        if (!is_array($where)) {
            return $where;
        }
        foreach ($where as $key => &$value) {
            if (!is_integer($key)) {
                $value = sprintf('`%s`=\'%s\'', $key, static::filterValue($value));
            }
        }
        return implode(' AND ', $where);
    }

    /**
     * 获取 分页
     * @param int $size
     * @return array
     */
    public static function pageLimit($size = 10) {
        $page = intval(Helper::request('page', 1));
        if ($page < 1) {
            $page = 1;
        }
        return [($page - 1) * $size, $size];
    }

    /**
     * 删除
     * @param $table
     * @param $where
     * @param string $sql
     * @return bool|resource
     */
    public static function delete($table, $where, $sql = '') {
        return static::db()->query(sprintf('DELETE FROM %s WHERE %s %s',
            static::addPrefix($table),
            static::getWhereSql($where), $sql));
    }

    /**
     * 软删除
     * @param $table
     * @param $where
     * @param string $sql
     * @return bool|resource
     */
    public static function softDelete($table, $where, $sql = '') {
        return Sql::update($table, [
            'is_delete' => 1
        ], $where, $sql);
    }

    public static function getError() {
        return static::db()->error();
    }
}