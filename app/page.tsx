// Forçando esta página a ser sempre renderizada dinamicamente no servidor
export const dynamic = 'force-dynamic';

// Função que busca dados dinâmicos no servidor
async function getDynamicData() {
  // Simula uma busca de dados que muda a cada requisição
  // Em um caso real, isso poderia ser uma chamada a uma API ou banco de dados
  const a = 'A';
  
  const currentTime = new Date().toLocaleTimeString('pt-BR', {
    timeZone: 'America/Sao_Paulo',
    hour: '2-digit',
    minute: '2-digit',
    second: '2-digit',
  });
  
  return {
    message: "Este horário foi gerado no servidor (EC2) via SSR.",
    timestamp: currentTime
  };
}

// O componente da nossa página principal
export default async function HomePage() {
  const dynamicData = await getDynamicData();

  return (
    <main style={{ fontFamily: 'sans-serif', padding: '2rem' }}>
      
      {/* ======================= PARTE ESTÁTICA ======================= */}
      <div style={{ border: '2px solid blue', padding: '1rem', marginBottom: '2rem', borderRadius: '8px' }}>
        <h1>📦 Conteúdo Estático</h1>
        <p>
          Este texto, o título, e a estrutura HTML desta caixa são "estáticos".
          Eles são gerados durante o "build" e se tornam parte do arquivo JavaScript
          que será hospedado no <strong>Bucket S3</strong>.
        </p>
        <img 
          src="/UpperStack.jfif" 
          alt="Logo da AWS" 
          width={100} 
          style={{ marginTop: '1rem' }} 
        />
        <p><i>(Esta imagem também é um asset estático que irá para o S3)</i></p>
      </div>

      {/* ======================= PARTE DINÂMICA ======================= */}
      <div style={{ border: '2px solid orange', padding: '1rem', borderRadius: '8px', backgroundColor: '#fff8e0' }}>
        <h1>⚡ Conteúdo Dinâmico (SSR)</h1>
        <p>{dynamicData.message}</p>
        <h2>{dynamicData.timestamp}</h2>
        <p>
          A informação acima (o horário) é "dinâmica". Ela é gerada na
          <strong>instância EC2</strong> toda vez que recarregar a página.
        </p>
        <p>
          Recarregue a página (F5) e você irá ver o horário mudar, provando
          que o servidor está executando código em tempo real.
        </p>
      </div>
      
    </main>
  );
}
