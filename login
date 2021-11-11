Activity_main.xml 
<?xml version="1.0" encoding="utf-8"?> 
<androidx.constraintlayout.widget.ConstraintLayout 
xmlns:android="http://schemas.android.com/apk/res/android" 
 xmlns:app="http://schemas.android.com/apk/res-auto" 
 xmlns:tools="http://schemas.android.com/tools" 
 android:layout_width="match_parent" 
 android:layout_height="match_parent" 
 tools:context=".MainActivity"> 
 <EditText 
 android:id="@+id/UserName" 
 android:layout_width="wrap_content" 
 android:layout_height="wrap_content" 
 android:ems="10" 
 android:hint="User Name" 
 android:inputType="textPersonName" 
 app:layout_constraintBottom_toBottomOf="parent" 
 app:layout_constraintEnd_toEndOf="parent" 
 app:layout_constraintHorizontal_bias="0.497" 
 app:layout_constraintStart_toStartOf="parent" 
 app:layout_constraintTop_toTopOf="parent" 
 app:layout_constraintVertical_bias="0.303" /> 
 <EditText 
 android:id="@+id/password" 
 android:layout_width="wrap_content" 
 android:layout_height="wrap_content" 
 android:ems="10" 
 android:hint="Password" 
 android:inputType="textPassword" 
 app:layout_constraintBottom_toBottomOf="parent" 
 app:layout_constraintEnd_toEndOf="parent" 
 app:layout_constraintHorizontal_bias="0.497" 
 app:layout_constraintStart_toStartOf="parent" 
 app:layout_constraintTop_toBottomOf="@+id/UserName" 
 app:layout_constraintVertical_bias="0.15" /> 
 <Button 
 android:id="@+id/btnLogin" 
 android:layout_width="wrap_content" 
 android:layout_height="wrap_content" 
 android:text="Login" 
 app:layout_constraintBottom_toBottomOf="parent" 
 app:layout_constraintEnd_toEndOf="parent" 
 app:layout_constraintHorizontal_bias="0.498" 
 app:layout_constraintStart_toStartOf="parent" 
 app:layout_constraintTop_toBottomOf="@+id/password" 
 app:layout_constraintVertical_bias="0.178" /> 
 <TextView 
 android:id="@+id/info" 
 android:layout_width="wrap_content" 
 android:layout_height="wrap_content" 
 android:layout_marginBottom="88dp" 
 android:text="TextView" 
 app:layout_constraintBottom_toBottomOf="parent" 
 app:layout_constraintEnd_toEndOf="parent" 
 app:layout_constraintHorizontal_bias="0.498" 
 app:layout_constraintStart_toStartOf="parent" 
 app:layout_constraintTop_toBottomOf="@+id/btnLogin" /> 
</androidx.constraintlayout.widget.ConstraintLayout> 
MainActivity.java: 
package com.example.loginform; 
import androidx.appcompat.app.AppCompatActivity; 
import android.content.Intent; 
import android.os.Bundle; 
import android.view.View; 
import android.widget.Button; 
import android.widget.EditText; 
import android.widget.TextView; 
public class MainActivity extends AppCompatActivity { 
 private EditText Name; 
 private EditText Password; 
 private TextView Info; 
 private Button Login; 
 private int counter = 3; 
 @Override 
 protected void onCreate(Bundle savedInstanceState) { 
 super.onCreate(savedInstanceState); 
 setContentView(R.layout.activity_main); 
 Name = (EditText)findViewById(R.id.UserName); 
 Password = (EditText)findViewById(R.id.password); 
 Info = (TextView)findViewById(R.id.info); 
 Login = (Button)findViewById(R.id.btnLogin); 
 Info.setText("Number of attempts remaming is 3"); 
 Login.setOnClickListener(new View.OnClickListener() { 
 @Override 
 public void onClick(View view) { 
 
validate(Name.getText().toString(),Password.getText().toString
()); 
 } 
 }); 
 } 
 private void validate(String userName , String password){ 
 if(userName.equals("Admin") && 
password.equals("1234")){ 
 Intent intent = new 
Intent(MainActivity.this,MainActivity2.class); 
 startActivity(intent); 
 }else{ 
 counter--; 
 Info.setText("Number of Attempts remaning" + 
String.valueOf(counter)); 
 if(counter == 0) 
 Login.setEnabled(false); 
 } 
 } 
} 
activity_main2.xml: 
<?xml version="1.0" encoding="utf-8"?> 
<androidx.constraintlayout.widget.ConstraintLayout 
xmlns:android="http://schemas.android.com/apk/res/android" 
 xmlns:app="http://schemas.android.com/apk/res-auto" 
 xmlns:tools="http://schemas.android.com/tools" 
 android:layout_width="match_parent" 
 android:layout_height="match_parent" 
 android:layout_gravity="center" 
 android:background="@color/teal_700" 
 tools:context=".MainActivity2"> 
 <TextView 
 android:id="@+id/loged" 
 android:layout_width="wrap_content" 
 android:layout_height="wrap_content" 
 android:text="Congratulation!!!!" 
 android:textColor="@color/white" 
 android:textSize="30sp" 
 app:layout_constraintBottom_toBottomOf="parent" 
 app:layout_constraintEnd_toEndOf="parent" 
 app:layout_constraintHorizontal_bias="0.445" 
 app:layout_constraintStart_toStartOf="parent" 
 app:layout_constraintTop_toTopOf="parent" 
 app:layout_constraintVertical_bias="0.338" /> 
 <TextView 
 android:id="@+id/loged" 
 android:layout_width="wrap_content" 
 android:layout_height="wrap_content" 
 android:text="You have sucessfully login :)" 
 android:textColor="@color/white" 
 android:textSize="30sp" 
 app:layout_constraintBottom_toBottomOf="parent" 
 app:layout_constraintEnd_toEndOf="parent" 
 app:layout_constraintStart_toStartOf="parent" 
 app:layout_constraintTop_toBottomOf="@+id/loged" 
 app:layout_constraintVertical_bias="0.594" /> 
</androidx.constraintlayout.widget.ConstraintLayout>
MainActivity2.java: 
package com.example.loginform; 
import androidx.appcompat.app.AppCompatActivity; 
import android.os.Bundle; 
public class MainActivity2 extends AppCompatActivity { 
 @Override 
 protected void onCreate(Bundle savedInstanceState) { 
 super.onCreate(savedInstanceState); 
 setContentView(R.layout.activity_main2); 
 } 
}
