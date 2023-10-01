export const handler = async (event: any) => {
    try {
        const eventData = event.body;

        // Return a response
        return {
            statusCode: 200,
            body: JSON.stringify(eventData),
        };
    } catch (error) {
        // Handle errors gracefully
        return {
            statusCode: 500,
            body: JSON.stringify({ event}),
        };
    }
};