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

async function insertProducto(obj) {
    try {
        var query ="insert into listaprod set ?";
        var rows = await pool.query(query, [obj])
        return rows;
    } catch (error) {
        console.log(error);
        throw error;
    }
}//cierra insert

async function getProductoById(id) {
    var query = "select * from listaprod where id=?";
    var rows = await pool.query(query, [id]);
    return rows [0];
}

// modificar esos datos
async function modificarProductoById (obj, id) {
    try {
        var query = "update listaprod set ? where id = ? ";
        //aca tenias "(query, obj [obj, id])" tiene que ser solo  "query, [obj, id]" sin el obj antes de las "[]"
        var rows = await pool.query(query, [obj, id]);
        return rows;
    } catch (error) {
        throw error;
    }

    async function modificarProductoById(obj, id) {
        console.log('check5');
        try {
            var query = "update news set ? where id=?";
            var rows = await pool.query(query, [obj, id]);
            return rows[0];
        } catch (error) {
            throw error;
        }
    
    }
} //cierra modi> update

//open buscar novedades
async function buscarListaprod(busqueda) {
    var query = "select * from listaprod where marca like ? OR modelo like ?";
    var rows = await pool.query(query, ['%' + busqueda + '%', '%' + busqueda + '%']);
    return rows;
}

module.exports = {getListaprod, deleteProductoById, insertProducto, getProductoById, modificarProductoById, buscarListaprod}