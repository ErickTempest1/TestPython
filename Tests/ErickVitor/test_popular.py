import requests

url = "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1"

headers = {
    "accept": "application/json",
    "content-type": "application/json",
    "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0MWUzYWZlYzI3MWYxMjE3NzdiNjg1ZWUwNjMwYmRkNiIsIm5iZiI6MTc2MzYwMDMwNy4yNTgsInN1YiI6IjY5MWU2N2IzZGY0NTI0ZjgwZmMyY2JlYSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.oSN4WXIYsxv7t345_2_GXaSbCHInOa9Ub8vYiWU8nRA"
}

def test_can_get_popular_movies():
    reponse = requests.get(url, headers=headers)
    assert reponse.status_code == 200

    def test_can_get_first_popular_movie_details():
        response = requests.get(url, headers=headers)
        data = responde.json()
        first_movie_id = data['results'][0]['id']
        url_movie = f"https://api.themoviedb.org/3/movie/{first_movie_id}"
        responde_movie = requests.get(url_movie, headers=headers)
        assert responde_movie.status_code == 200

        if responde_movie.status_code !=200:
            print("Fallha ao tentar ler o primeiro teste")
            print(responde_movie.text)
            assert responde_movie.status_code == 200