class ApiRoutes {
  static const user = 'api/collections/users/records?sort=-created'; //GET
  static const authWithPassword =
      'api/collections/users/auth-with-password'; //POST
  static const authRefresh = 'api/collections/users/auth-refresh'; //POST
  static const signup = 'api/collections/users/records'; //POST
  static const getSecrets =
      'api/collections/secrets/records?sort=-created'; //GET
  static const uploadSecret = 'api/collections/secrets/records'; //POST
}
