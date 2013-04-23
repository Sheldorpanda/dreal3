/*********************************************************************
Author: Soonho Kong <soonhok@cs.cmu.edu>
        Sicun Gao <sicung@cs.cmu.edu>
        Edmund Clarke <emc@cs.cmu.edu>

dReal -- Copyright (C) 2013, Soonho Kong, Sicun Gao, and Edmund Clarke

dReal is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

dReal is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with dReal. If not, see <http://www.gnu.org/licenses/>.
*********************************************************************/

#ifndef ICPSOLVER_H
#define ICPSOLVER_H

#include "realpaver.h"
#include "Enode.h"
#include "SMTConfig.h"
#include "ode_solver.h"
#include <fstream>
#include <queue>

class icp_solver
{
public:
    icp_solver(SMTConfig& c,
               const vector<Enode*> & stack,
               map<Enode*, pair<double, double> > & env,
               vector<Enode*> & exp,
               map < Enode*, set < Enode* > > & enode_to_vars
              );

    ~icp_solver();

    rp_problem*   create_rp_problem(const vector<Enode*> & stack,
                                    map<Enode*, pair<double, double> > & env);

    rp_box        compute_next(); //computation of the next solution
    bool          prop();         //only propagate
    bool          prop_with_ODE(); //propagate with ODE (only in complete check)

    int           solution();     //number of solutions
    int           nboxes();       //number of boxes
    int           nsplit();       //number of branching

    bool          solve();

    void display_box(ostream& out, rp_box b, int digits, int mode) const;
    void display_interval(ostream & out, rp_interval i, int digits, int mode) const;
    void pprint_vars(ostream & out, rp_problem p, rp_box b) const;
    void print_ODE_trajectory() const;

    /* void          prune                   ( rp_box *, literal * ); */
    /* void          prune                   ( rp_box *, rp_problem * ); */
    /* void          branch                  ( rp_box * ); */

private:
    SMTConfig& _config;
    rp_problem * _problem;     /* problem to be solved                    */
    rp_propagator * _propag;   /* reduction algorithm using propagation   */
    rp_box_stack _boxes;       /* the set of boxes during search          */
    rp_selector * _vselect;    /* selection of variable to be split       */
    rp_splitter * _dsplit;     /* split function of variable domain       */
    rp_existence_prover * _ep; /* existence prover                        */
    int _sol;                  /* number of computed solutions            */
    int _nsplit;               /* number of split steps                   */
    double _improve;           /* improvement factor of iterative methods */

    map < Enode*, set < Enode* > > &     _enode_to_vars;
    map<Enode*, int>                     _enode_to_rp_id;
    vector<Enode*> &                     _explanation;
    const vector<Enode*> &               _stack;
    map<Enode*, pair<double, double> > & _env;
    queue<ode_solver*>                   _ode_solver_queue;

    void output_problem() const;
    void callODESolver(int group,
                       vector< set< Enode* > > & diff_vec);

    bool ODEresult;

    icp_solver& operator=(const icp_solver& s);
    icp_solver(const icp_solver& s);
};

#endif
