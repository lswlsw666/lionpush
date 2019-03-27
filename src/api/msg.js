/**
 * lsw 2019 01 07
 */
import http from '../assets/js/http';
import {async} from "q";

export function getNews() {
    const url = 'https://randomuser.me/api/?results=5&inc=name,gender,email,nat&noinfo';
    return http.get(url)
}

export async function pushNews({title,service,}) {

}