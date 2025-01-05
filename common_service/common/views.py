from rest_framework.views import APIView
from rest_framework.response import Response

class ConfigView(APIView):
    """
    API to provide global configuration settings.
    """
    def get(self, request):
        """
        Return global configuration settings.
        """
        return Response({
            "service_name": "Common Service",
            "version": "1.0.0",
            "status": "running"
        })
