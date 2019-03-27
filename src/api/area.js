/**
 *2019 01 17
 * lsw
 */
import http from '../assets/js/http';

export function getAreas() {
    const url = 'area.json';
    return http.get(url);
}

export function getService() {
    const url = 'service.json';
    return http.get(url);
}