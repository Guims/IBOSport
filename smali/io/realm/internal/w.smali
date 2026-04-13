.class public abstract Lio/realm/internal/w;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lio/realm/internal/w;->a:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lio/realm/internal/w;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lio/realm/internal/w;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "realm-jni"

    const-string v2, "10.19.0"

    new-instance v3, LJ/l;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, LJ/l;-><init>(I)V

    if-eqz p0, :cond_1

    const-string v4, "Beginning load of %s..."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, LJ/l;->T(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v1, v2}, LJ/l;->S(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lio/realm/internal/w;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given context is null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
