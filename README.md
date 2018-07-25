# JMeter Test
## Overview:
Repository purpose is to implement simple performance test on application, docerized by me in `application` folder. The JMeter itself is also provided in repository.

Application: [mean-stack-registration-login-example](http://https://github.com/cornflourblue/mean-stack-registration-login-example)

JMeter Thread group properties:
* Number of Threads: 300
* Ramp-up period: 30
* Loop Count: forever
* Scheduler: 60s duration, 5s delay

## The flow of tests:
1. Open homepage
2. Open registration form
3. Register new user
4. Login

Each step confirmed with assertion that we are on proper page.

User data will be populated by csv file from `feeder` directory. Random data generated using `node.js` and [faker.js](http://https://github.com/Marak/faker.js) library.

## Reporting
Reports from running performance tests will be generated in `results` directory. Outpu is standard HTML JMeter report. Logs (.jml, .log) in `logs` directory.

## Run
### Prerequisities
* Linux/MacOS
* Docker
* Java

### Setup application
```bash
cd application
docker-compose up
cd ..
```
After this application should be running on: `http://localhost:3000`

### JMeter test
```bash
sh ./start_test.sh
```

### Cleanup
Remember to close docker-compose containers
```bash
docker-compose down
```

### Todo
* Put everything in one docker-compose file
