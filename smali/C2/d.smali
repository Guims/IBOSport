.class public final LC2/d;
.super Ljava/lang/Object;


# static fields
.field public static final b:LC2/d;


# instance fields
.field public a:LC2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LC2/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, LC2/d;->a:LC2/c;

    sput-object v0, LC2/d;->b:LC2/d;

    return-void
.end method

.method public static a(Landroid/content/Context;)LC2/c;
    .locals 3

    sget-object v0, LC2/d;->b:LC2/d;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LC2/d;->a:LC2/c;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, LC2/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LC2/c;-><init>(Landroid/content/Context;Z)V

    iput-object v1, v0, LC2/d;->a:LC2/c;

    :cond_1
    iget-object p0, v0, LC2/d;->a:LC2/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
