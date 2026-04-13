.class public abstract LK5/n;
.super Ljava/lang/Object;


# static fields
.field public static final a:LK5/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "java.nio.file.Files"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, LK5/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, LK5/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v0, LK5/n;->a:LK5/t;

    sget-object v0, LK5/x;->q:Ljava/lang/String;

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProperty(\"java.io.tmpdir\")"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh3/e;->t(Ljava/lang/String;Z)LK5/x;

    new-instance v0, LL5/e;

    const-class v1, LL5/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "ResourceFileSystem::class.java.classLoader"

    invoke-static {v1, v2}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, LL5/e;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public abstract a(LK5/x;LK5/x;)V
.end method

.method public abstract b(LK5/x;)V
.end method

.method public abstract c(LK5/x;)V
.end method

.method public final d(LK5/x;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK5/n;->e(LK5/x;)LK5/m;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract e(LK5/x;)LK5/m;
.end method

.method public abstract f(LK5/x;)LK5/s;
.end method

.method public abstract g(LK5/x;)LK5/s;
.end method

.method public abstract h(LK5/x;)LK5/F;
.end method
