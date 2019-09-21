(import tensorflow)
(import numpy)

(setv x_data (.astype (numpy.random.rand 100) numpy.float32))
(setv y_data (+ (* x_data 0.1) 0.3))
(setv Weights (tensorflow.Variable (tensorflow.random_uniform [1] -1.0 1.0)))
(setv biases (tensorflow.Variable (tensorflow.zeros [1])))
(setv y (+ (* x_data Weights) biases))
(setv loss (tensorflow.reduce_mean (tensorflow.square (- y y_data))))
(setv optimizer (tensorflow.train.GradientDescentOptimizer 0.5))
(setv train (optimizer.minimize loss))
(setv sess (tensorflow.Session))
(setv init (tensorflow.global_variables_initializer))
(sess.run init)

(for [step (range 201)]
  (do
   (sess.run train)
   (if (= (% step 20) 0)
     (print step (sess.run Weights) (sess.run biases)))))

(first
 (map (fn [x]
        (do
         (setv y 100)
         (+ x y))) [1 2 5 6])) ;;=> 101L
