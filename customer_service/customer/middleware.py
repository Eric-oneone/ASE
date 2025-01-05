import logging

logger = logging.getLogger('django')

class APILoggerMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        response = self.get_response(request)
        logger.info(f"Method: {request.method}, Path: {request.path}, Status: {response.status_code}")
        return response
