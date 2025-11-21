import requests
TOKEN = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0MWUzYWZlYzI3MWYxMjE3NzdiNjg1ZWUwNjMwYmRkNiIsIm5iZiI6MTc2MzYwMDMwNy4yNTgsInN1YiI6IjY5MWU2N2IzZGY0NTI0ZjgwZmMyY2JlYSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.oSN4WXIYsxv7t345_2_GXaSbCHInOa9Ub8vYiWU8nRA"

headers = {
    "accept": "application/json",
    "content-type": "application/json",
    "Authorization": f"Bearer {TOKEN}"
}

def test_can_call_endpoints():
    url = "https://api.themoviedb.org/3/account/22485758/lists?page=1"
    response = requests.get(url, headers=headers)
    assert response.status_code == 200

def test_can_get_movie_details():
    url_movie ="https://api.themoviedb.org/3/movie/550"

    response = requests.get(url_movie, headers=headers)
    assert response.status_code == 200
