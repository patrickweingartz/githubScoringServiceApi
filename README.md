# githubScoringServiceApi
This library provides the API-model for the GithubScoringService-Restservice.

## code generation
The class-generation is based on OpenAPI-3.0.3 Version.

## description
This API enables the user to specifically search the official github-API for
repositories using specific searchcriteria such as language and creation date.

The search result will be sorted by a popularity score based on number of stars, forks and
recency of updates.

## usage
The following request represents an example on how to call the service locally.
The first path parameter represents the programming language and the second the
creation date in the format YYYY-MM-DD.

```shell
GET localhost:8080//getGithubReposSortedByPopularityScore/java/2025-01-01
```

the github-authorization token is not mandatory, but without it the github-API will
limit its results and requests per minute.
For specific numbers on limitation find the official github-API

## troubleshooting and known limitations
Even tho the search criteria language and creation date are not mandatory, the
github-API will only provide results when there is at least one search criteria given.

Thats why the scoring service will return a 400 Bad Request when both parameters are missing.

## possible improvements
- more detailed exception handling for different http-status codes
- adding a specific model for github-response instead of using a generic map
- using spring security to handle the github-token
- adding test coverage for the api-model