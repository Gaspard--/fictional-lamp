import std.stdio;
import core.sys.windows.windows;
import derelict.glfw3.glfw3;


int main()
{

	DerelictGLFW3.load();


	if (!glfwInit()) {
		writeln("glfwInit didn't work");
		return -1;
	}

	auto window = glfwCreateWindow(640, 480, "Hello World", null, null);
	if (!window)
	{
		glfwTerminate();
		return -1;
	}

	glfwMakeContextCurrent(window);
	while (!glfwWindowShouldClose(window))
	{
		glClear(GL_COLOR_BUFFER_BIT);
		glfwSwapBuffers(window);		
		glfwPollEvents();
	}
	
	glfwTerminate();
	writefln("ok");
	return 0;
}