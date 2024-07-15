module.exports = async (srv)=>{
    srv.on('greeting', (req,res)=>{
        return 'Good Morning !'+ req.data.name;
    });
}

