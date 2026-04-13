.class public final synthetic LA3/a;
.super Ljava/lang/Object;

# interfaces
.implements LC3/a;


# instance fields
.field public final synthetic b:LA3/c;


# direct methods
.method public synthetic constructor <init>(LA3/c;)V
    .locals 0

    iput-object p1, p0, LA3/a;->b:LA3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LA3/b;)V
    .locals 3

    iget-object v0, p0, LA3/a;->b:LA3/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LA3/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, LA3/c;->c:Ljava/lang/Object;

    check-cast p1, LW3/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "Could not register handler for breadcrumbs events."

    const-string v1, "FirebaseCrashlytics"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, LA3/a;->b:LA3/c;

    iget-object v0, v0, LA3/c;->a:Ljava/lang/Object;

    check-cast v0, Lu2/j;

    invoke-virtual {v0, p1}, Lu2/j;->l(Landroid/os/Bundle;)V

    return-void
.end method
