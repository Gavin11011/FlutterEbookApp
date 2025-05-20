// Base URL for the FastAPI backend. Update this if the server location changes.
const String baseURL = 'http://localhost:8000';

// Endpoints served by the FastAPI application. These replace the previous
// Feedbooks URLs and return JSON data instead of Atom feeds.
const String popular = '/api/books/popular';
const String recent = '/api/books/recent';

// Additional category endpoints that can be implemented on the backend.
const String awards = '/api/books/awards';
const String noteworthy = '/api/books/noteworthy';
const String shortStory = '/api/books/genre/short-story';
const String sciFi = '/api/books/genre/science-fiction';
const String actionAdventure = '/api/books/genre/action-adventure';
const String mystery = '/api/books/genre/mystery';
const String romance = '/api/books/genre/romance';
const String horror = '/api/books/genre/horror';
