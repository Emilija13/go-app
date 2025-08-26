import http from 'k6/http';
import { sleep } from 'k6';

export let options = {
    vus: 5,
    duration: '2m',
};

export default function () {
    http.get('http://a0a151aac8f9b46feb9b5bfe16a79c29-1113941398.eu-north-1.elb.amazonaws.com:8080/load');
    sleep(1);
}
