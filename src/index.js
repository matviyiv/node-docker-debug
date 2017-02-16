const micro = require('micro');

function requestHandler(req, res) {
	return 'Welcome to micro';
}

const server = micro(requestHandler);

server.listen(8080);
console.log('Server stated open http://localhost:8080');