.class public abstract Lg4/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lg4/t;

.field public static final b:Lg4/t;

.field public static final c:LX/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lg4/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg4/t;-><init>(I)V

    sput-object v0, Lg4/s;->a:Lg4/t;

    new-instance v0, Lg4/t;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg4/t;-><init>(I)V

    sput-object v0, Lg4/s;->b:Lg4/t;

    new-instance v0, LX/g;

    const-string v1, "session_id"

    invoke-direct {v0, v1}, LX/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg4/s;->c:LX/g;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9

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
    if-ge v4, v0, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    new-instance v5, Lg4/z;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v7, "runningAppProcessInfo.processName"

    invoke-static {v6, v7}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v3, v1}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v5, v7, v8, v6, v3}, Lg4/z;-><init>(IILjava/lang/String;Z)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object p0
.end method
