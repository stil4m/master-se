# Workshop Testing and Formal Methods, Week 6

_This week we did an example test to prepare for the final written exam._

#### 1) Which of the following pairs of properties on the integers is stronger?</div>

<table class="table">
    <tbody><tr>
      <td>
        1.
      </td>
      <td class="success">
        $\lambda x \mapsto x = 0$
      </td>
      <td>
        $\lambda x \mapsto x \le 0$
      </td>
    </tr>
    <tr>
      <td>
        2.
      </td>
      <td class="success">
        $\lambda x \mapsto x^2 \neq 4$
      </td>
      <td>
        $\lambda x \mapsto x \neq 2$
      </td>
    </tr>
    <tr>
      <td>
        3.
      </td>
      <td class="success">
        $\lambda x \mapsto x^2 \ge 49$
      </td>
      <td class="success">
        $\lambda x \mapsto x \ge 7 \lor x \le -7$
      </td>
    </tr>
    <tr>
      <td>
        4.
      </td>
      <td>
        $\lambda x \mapsto x^2 \ge 0$
      </td>
      <td class="success">
        $\lambda x \mapsto \bot$
      </td>
    </tr>
    <tr>
      <td>
        5.
      </td>
      <td class="danger">
        $\lambda x \mapsto x \lt 3$
      </td>
      <td>
        $\lambda x \mapsto x \neq 0$
      </td>
    </tr>
  </tbody></table>


There are four cases:

* 1 is weaker than the other
* 1 is weaker than the other
* Both are stronger than each other
* Neither is stronger than the other (on both sides a counter example)

----
#### 2) Derive the strongest postcondition.

<div class="panel-body">

$\{p\} f \{q\}$ and $\{q\} g \{r\}$  

$\{p\} g\ \circ\ f \{r\}$  

Thus the strongest post condition is $r$.
