.class public final LE1/E;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lib/player/base/helper/c;LA/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/E;->b:Ljava/lang/Object;

    iput-object p2, p0, LE1/E;->c:Ljava/lang/Object;

    iput-object p3, p0, LE1/E;->d:Ljava/lang/Object;

    new-instance p1, LE1/D;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LE1/D;-><init>(LE1/E;Z)V

    iput-object p1, p0, LE1/E;->e:Ljava/lang/Object;

    new-instance p1, LE1/D;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LE1/D;-><init>(LE1/E;Z)V

    iput-object p1, p0, LE1/E;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv3/e;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LE1/E;->c:Ljava/lang/Object;

    new-instance v0, LL2/i;

    invoke-direct {v0}, LL2/i;-><init>()V

    iput-object v0, p0, LE1/E;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, LE1/E;->a:Z

    new-instance v1, LL2/i;

    invoke-direct {v1}, LL2/i;-><init>()V

    iput-object v1, p0, LE1/E;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Lv3/e;->a()V

    iget-object v1, p1, Lv3/e;->a:Landroid/content/Context;

    iput-object p1, p0, LE1/E;->b:Ljava/lang/Object;

    const-string p1, "com.google.firebase.crashlytics"

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "firebase_crashlytics_collection_enabled"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iput-boolean v0, p0, LE1/E;->a:Z

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v5

    :goto_0
    if-nez p1, :cond_3

    const-string p1, "firebase_crashlytics_collection_enabled"

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "Could not read data collection permission from manifest"

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object p1, v5

    :goto_1
    if-nez p1, :cond_2

    iput-boolean v0, p0, LE1/E;->a:Z

    move-object p1, v5

    goto :goto_2

    :cond_2
    iput-boolean v4, p0, LE1/E;->a:Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_3
    :goto_2
    iput-object p1, p0, LE1/E;->e:Ljava/lang/Object;

    iget-object p1, p0, LE1/E;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0}, LE1/E;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LE1/E;->d:Ljava/lang/Object;

    check-cast v0, LL2/i;

    invoke-virtual {v0, v5}, LL2/i;->b(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_3
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructor <init>(Lw2/d;Lv2/a;Lw2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/E;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, LE1/E;->d:Ljava/lang/Object;

    iput-object p1, p0, LE1/E;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, LE1/E;->a:Z

    iput-object p2, p0, LE1/E;->b:Ljava/lang/Object;

    iput-object p3, p0, LE1/E;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LE1/E;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, LE1/E;->b:Ljava/lang/Object;

    check-cast v0, Lv3/e;

    invoke-virtual {v0}, Lv3/e;->a()V

    iget-object v0, v0, Lv3/e;->g:Ly3/m;

    invoke-virtual {v0}, Ly3/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc4/a;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v1, v0, Lc4/a;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    :try_start_6
    invoke-virtual {p0, v0}, LE1/E;->b(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string p1, "ENABLED"

    goto :goto_0

    :cond_0
    const-string p1, "DISABLED"

    :goto_0
    iget-object v0, p0, LE1/E;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "global Firebase setting"

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, LE1/E;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "firebase_crashlytics_collection_enabled manifest flag"

    goto :goto_1

    :cond_2
    const-string v0, "API"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Crashlytics automatic data collection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " by "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const-string v1, "FirebaseCrashlytics"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method public c(Lu2/a;)V
    .locals 4

    iget-object v0, p0, LE1/E;->f:Ljava/lang/Object;

    check-cast v0, Lw2/d;

    iget-object v0, v0, Lw2/d;->B:LF2/e;

    new-instance v1, LE1/k;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, LE1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lu2/a;)V
    .locals 6

    iget-object v0, p0, LE1/E;->f:Ljava/lang/Object;

    check-cast v0, Lw2/d;

    iget-object v0, v0, Lw2/d;->y:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, LE1/E;->c:Ljava/lang/Object;

    check-cast v1, Lw2/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/j;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lw2/j;->l:Lw2/d;

    iget-object v1, v1, Lw2/d;->B:LF2/e;

    invoke-static {v1}, Lx2/o;->a(Landroid/os/Handler;)V

    iget-object v1, v0, Lw2/j;->c:Lv2/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSignInFailed for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lv2/a;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lw2/j;->o(Lu2/a;Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 6

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-boolean p1, p0, LE1/E;->a:Z

    iget-object p1, p0, LE1/E;->f:Ljava/lang/Object;

    check-cast p1, LE1/D;

    iget-object v2, p0, LE1/E;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, LE1/D;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    iget-boolean p1, p0, LE1/E;->a:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, LE1/E;->e:Ljava/lang/Object;

    check-cast p1, LE1/D;

    iget-object v1, p0, LE1/E;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    monitor-enter p1

    :try_start_0
    iget-boolean v2, p1, LE1/D;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    const/16 v4, 0x21

    const/4 v5, 0x1

    if-lt v2, v4, :cond_2

    iget-boolean v2, p1, LE1/D;->b:Z

    if-eq v5, v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    invoke-static {v1, p1, v0, v2}, LC2/a;->r(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_1
    iput-boolean v5, p1, LE1/D;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    return-void

    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    iget-object p1, p0, LE1/E;->e:Ljava/lang/Object;

    check-cast p1, LE1/D;

    iget-object v1, p0, LE1/E;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, LE1/D;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method
