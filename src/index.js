/* eslint no-console:0 */

export default function logSlowReducers(reducers, thresholdInMs = 8) {
    Object.keys(reducers).forEach((name) => {
        const originalReducer = reducers[name];
        reducers[name] = (state, action) => {
            const start = Date.now();
            const result = originalReducer(state, action);
            const diffInMs = Date.now() - start;
            if (diffInMs >= thresholdInMs) {
                console.warn('Reducer "' + name + '" took ' + diffInMs + 'ms for ' + action.type);
            }
            return result;
        };
    });
    return reducers;
}
