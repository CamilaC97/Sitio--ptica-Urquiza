var pool = require ('./bd');


async function getListaprod() {
    var query = "select * from listaprod";
    var rows = await pool.query(query);
    return rows;
}

async function deleteProductoById(id) {
    var query = "delete from listaprod where id = ?";
    var rows = await pool.query(query, [id]);
    return rows;
}

module.exports = {getListaprod, deleteProductoById}