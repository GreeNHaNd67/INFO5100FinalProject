import {getBloodList} from '@/api/dashboard'

const state = {
    tableData:[]
}

const mutations = {
    SET_TABLE_DATA(state, data) {
        state.tableData = data;

    },
}

const actions = {
    getBloodListInfo:async ({ commit }, { startDate, endDate }) => {
        try {
            const response = startDate && endDate
        ? await getBloodList(startDate, endDate)
            : await getBloodList({});
        
            if (response && response.data) {
        commit('SET_TABLE_DATA', response.data);
            } 
            return response?.data
            
        } catch (error) {
            console.log("request failed",error);
        }
    }
}

export default {
    namespaced: true,
    state,
    mutations,
    actions
}