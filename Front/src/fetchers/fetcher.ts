export async function fetcher<T>(
  input: string | URL | globalThis.Request,
  init?: RequestInit
): Promise<T | undefined> {
  let data: T | undefined;

  try {
    const response = await fetch(input, {
      headers: {
        'Content-Type': 'application/json',
        Accept: 'application/json',
        // 'X-CSRFToken': getCookie('csrftoken'), // !!!Include CSRF token if CSRF is enabled
      },
      credentials: 'include', // Omogućava slanje kolačića za autentifikaciju
      ...init,
    });

    // Provjeravamo je li odgovor uspješan
    if (!response.ok) {
      const errorText = await response.text(); // Pokušaj dobiti detalje o grešci iz odgovora
      throw new Error(`Response status: ${response.status}, ${errorText}`);
    }

    // Provjeravamo je li odgovor prazan (204 No Content)
    const isNoContent = response.status === 204;

    if (!isNoContent) {
      // Čekamo na parsiranje tijela odgovora kao JSON
      data = await response.json();
    }
  } catch (error) {
    // Poboljšano hvatanje greške s više informacija
    console.error('Došlo je do greške tijekom fetch poziva:', error);
    // Ponovno bacamo grešku kako bi je vanjski kod mogao uhvatiti ili obraditi
    throw error;
  }

  // Vraćamo podatke ili undefined ako nije bilo sadržaja - samo tijelo odgovora koje je parsirano, tj pretvorneo je u objekt
  return data;
}
