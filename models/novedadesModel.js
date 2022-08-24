var pool = require ('./bd');


async function getNovedades() {
    var query = 'select * from novedades';
    var rows = await pool.query(query);
    return rows;
}

async function deleteNovedadById(id) {
    var query = "delete from novedades where id = ?";
    var rows = await pool.query(query, [id]);
    return rows;
}

async function insertNovedad(obj) {
    try {
        var query ="insert into novedades set ?";
        var rows = await pool.query(query, [obj])
        return rows;
    } catch (error) {
        console.log(error);
        throw error;
    }
}//cierra insert

async function getNovedadById(id) {
    var query = "select * from novedades where id=?";
    var rows = await pool.query(query, [id]);
    return rows [0];
}

// modificar esos datos
async function modificarNovedadById (obj, id) {
    try {
        var query = "update novedades set ? where id=?";
        var rows = await pool.query(query, obj [obj, id]);
        return rows;
    } catch (error) {
        throw error;
    }
} //cierra modi> update

module.exports = { getNovedades, deleteNovedadById, insertNovedad, getNovedadById, modificarNovedadById }