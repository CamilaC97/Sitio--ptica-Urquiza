var pool = require('./bd');


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
        var query = "insert into novedades set ?";
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
    return rows[0];
}

// modificar esos datos
async function modificarNovedadById(obj, id) {
    try {
        var query = "update novedades set ? where id = ? ";
        //aca tenias "(query, obj [obj, id])" tiene que ser solo  "query, [obj, id]" sin el obj antes de las "[]"
        var rows = await pool.query(query, [obj, id]);
        return rows;
    } catch (error) {
        throw error;
    }

    async function modificarNovedadById(obj, id) {
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

//buscar model
async function buscarNovedades(busqueda) {
    var query = "select * from novedades where titulo like ? OR subtitulo like ? OR cuerpo like ?"
    var rows = await pool.query(query, ['%' + busqueda + '%', '%' + busqueda + '%', '%' + busqueda + '%']);
    return rows;
}

module.exports = { getNovedades, deleteNovedadById, insertNovedad, getNovedadById, modificarNovedadById, buscarNovedades }