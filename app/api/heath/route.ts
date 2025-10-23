// SSR/app/api/health/route.ts

// Esta função irá lidar com as requisições GET para /api/health
export async function GET() {
  // Retorna uma resposta simples com o texto "OK" e o status 200.
  // O Load Balancer só precisa do status 200 para considerar a instância saudável.
  return new Response('OK', {
    status: 200,
  });
}
