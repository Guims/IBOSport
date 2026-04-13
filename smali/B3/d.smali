.class public final LB3/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:LB3/d;

.field public static final b:LB3/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LB3/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LB3/d;->a:LB3/d;

    new-instance v0, LB3/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LB3/d;->b:LB3/d;

    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Landroid/app/ActivityManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p0, Landroid/app/ActivityManager;

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    sget-object v3, LT4/p;->b:LT4/p;

    :cond_2
    invoke-static {v3}, LT4/g;->w(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_3
    :goto_1
    if-ge v5, v3, :cond_4

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v7, v0, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v2}, LT4/i;->u(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v4, v0, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    new-instance v5, LH3/Z;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v6, :cond_5

    iput-object v6, v5, LH3/Z;->a:Ljava/lang/String;

    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v7, v5, LH3/Z;->b:I

    iget-byte v7, v5, LH3/Z;->e:B

    or-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iput v3, v5, LH3/Z;->c:I

    or-int/lit8 v3, v7, 0x2

    int-to-byte v3, v3

    iput-byte v3, v5, LH3/Z;->e:B

    invoke-static {v6, v1}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v5, LH3/Z;->d:Z

    iget-byte v3, v5, LH3/Z;->e:B

    or-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    iput-byte v3, v5, LH3/Z;->e:B

    invoke-virtual {v5}, LH3/Z;->a()LH3/a0;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Null processName"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-object p0
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    const/4 v0, 0x4

    if-le v0, p1, :cond_1

    const-string v0, "FirebaseCrashlytics"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LB3/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseCrashlytics"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public d(Landroid/content/Context;)LH3/D0;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p1}, LB3/d;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    check-cast v4, LH3/D0;

    check-cast v4, LH3/a0;

    iget v4, v4, LH3/a0;->b:I

    if-ne v4, v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v3, LH3/D0;

    if-nez v3, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-le p1, v1, :cond_2

    invoke-static {}, LB3/e;->g()Ljava/lang/String;

    move-result-object p1

    const-string v1, "{\n      Process.myProcessName()\n    }"

    invoke-static {p1, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x1c

    const-string v2, ""

    if-lt p1, v1, :cond_3

    invoke-static {}, LB2/b;->p()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_3
    move-object p1, v2

    :cond_4
    :goto_1
    const/4 v1, 0x0

    const-string v2, "processName"

    invoke-static {p1, v2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LH3/Z;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, LH3/Z;->a:Ljava/lang/String;

    iput v0, v2, LH3/Z;->b:I

    iget-byte p1, v2, LH3/Z;->e:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput v1, v2, LH3/Z;->c:I

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-boolean v1, v2, LH3/Z;->d:Z

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, v2, LH3/Z;->e:B

    invoke-virtual {v2}, LH3/Z;->a()LH3/a0;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v3
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LB3/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseCrashlytics"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LB3/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseCrashlytics"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
