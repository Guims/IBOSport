.class public final Lk4/k;
.super Ljava/lang/Object;


# static fields
.field public static final c:LX/g;

.field public static final d:LX/g;

.field public static final e:LX/g;

.field public static final f:LX/g;

.field public static final g:LX/g;


# instance fields
.field public final a:LT/h;

.field public b:Lk4/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LX/g;

    const-string v1, "firebase_sessions_enabled"

    invoke-direct {v0, v1}, LX/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lk4/k;->c:LX/g;

    new-instance v0, LX/g;

    const-string v1, "firebase_sessions_sampling_rate"

    invoke-direct {v0, v1}, LX/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lk4/k;->d:LX/g;

    new-instance v0, LX/g;

    const-string v1, "firebase_sessions_restart_timeout"

    invoke-direct {v0, v1}, LX/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lk4/k;->e:LX/g;

    new-instance v0, LX/g;

    const-string v1, "firebase_sessions_cache_duration"

    invoke-direct {v0, v1}, LX/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lk4/k;->f:LX/g;

    new-instance v0, LX/g;

    const-string v1, "firebase_sessions_cache_updated_time"

    invoke-direct {v0, v1}, LX/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lk4/k;->g:LX/g;

    return-void
.end method

.method public constructor <init>(LT/h;)V
    .locals 6

    const-string v0, "dataStore"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk4/k;->a:LT/h;

    new-instance p1, LT/d;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1, v0}, LT/d;-><init>(Ljava/lang/Object;LV4/d;I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lm5/i0;->a()Lm5/I;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lm5/p;->r:Lm5/p;

    invoke-interface {v2, v3, v4}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_1

    :cond_0
    sget-object v4, LV4/j;->b:LV4/j;

    if-eqz v3, :cond_1

    sget-object v3, Lm5/p;->q:Lm5/p;

    invoke-interface {v2, v4, v3}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    check-cast v3, LV4/i;

    invoke-interface {v4, v3}, LV4/i;->s(LV4/i;)LV4/i;

    :goto_1
    sget-object v4, Lm5/C;->a:Lt5/d;

    if-eq v3, v4, :cond_2

    sget-object v5, LV4/e;->b:LV4/e;

    invoke-interface {v3, v5}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-interface {v3, v4}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object v3

    :cond_2
    new-instance v4, Lm5/c;

    invoke-direct {v4, v3, v0, v2}, Lm5/c;-><init>(LV4/i;Ljava/lang/Thread;Lm5/I;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0, v4, p1}, Lm5/a;->S(ILm5/a;Ld5/p;)V

    const/4 p1, 0x0

    iget-object v0, v4, Lm5/c;->t:Lm5/I;

    if-eqz v0, :cond_3

    sget v2, Lm5/I;->u:I

    invoke-virtual {v0, p1}, Lm5/I;->B(Z)V

    :cond_3
    :goto_2
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lm5/I;->C()J

    move-result-wide v2

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_4
    const-wide v2, 0x7fffffffffffffffL

    :goto_3
    invoke-virtual {v4}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lm5/M;

    if-eqz v5, :cond_5

    invoke-static {v4, v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    sget v2, Lm5/I;->u:I

    invoke-virtual {v0, p1}, Lm5/I;->z(Z)V

    :cond_6
    invoke-virtual {v4}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lm5/w;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lm5/n;

    if-eqz v0, :cond_7

    move-object v1, p1

    check-cast v1, Lm5/n;

    :cond_7
    if-nez v1, :cond_8

    return-void

    :cond_8
    iget-object p1, v1, Lm5/n;->a:Ljava/lang/Throwable;

    throw p1

    :cond_9
    :try_start_1
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v4, v1}, Lm5/a0;->m(Ljava/lang/Object;)Z

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz v0, :cond_a

    sget v2, Lm5/I;->u:I

    invoke-virtual {v0, p1}, Lm5/I;->z(Z)V

    :cond_a
    throw v1
.end method

.method public static final a(Lk4/k;LX/b;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lk4/f;

    sget-object v1, Lk4/k;->c:LX/g;

    invoke-virtual {p1, v1}, LX/b;->c(LX/g;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    sget-object v2, Lk4/k;->d:LX/g;

    invoke-virtual {p1, v2}, LX/b;->c(LX/g;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    sget-object v3, Lk4/k;->e:LX/g;

    invoke-virtual {p1, v3}, LX/b;->c(LX/g;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v4, Lk4/k;->f:LX/g;

    invoke-virtual {p1, v4}, LX/b;->c(LX/g;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    sget-object v5, Lk4/k;->g:LX/g;

    invoke-virtual {p1, v5}, LX/b;->c(LX/g;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/Long;

    invoke-direct/range {v0 .. v5}, Lk4/f;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    iput-object v0, p0, Lk4/k;->b:Lk4/f;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 5

    iget-object v0, p0, Lk4/k;->b:Lk4/f;

    const/4 v1, 0x0

    const-string v2, "sessionConfigs"

    if-eqz v0, :cond_2

    iget-object v3, v0, Lk4/f;->e:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lk4/f;->d:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {v2}, Le5/g;->k(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Le5/g;->k(Ljava/lang/String;)V

    throw v1
.end method

.method public final c(LX/g;Ljava/lang/Object;LX4/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lk4/i;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lk4/i;

    iget v1, v0, Lk4/i;->r:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lk4/i;->r:I

    goto :goto_0

    :cond_0
    new-instance v0, Lk4/i;

    invoke-direct {v0, p0, p3}, Lk4/i;-><init>(Lk4/k;LX4/c;)V

    :goto_0
    iget-object p3, v0, Lk4/i;->b:Ljava/lang/Object;

    iget v1, v0, Lk4/i;->r:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p3}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, LE5/l;->C(Ljava/lang/Object;)V

    :try_start_1
    iget-object p3, p0, Lk4/k;->a:LT/h;

    new-instance v1, Lk4/j;

    const/4 v3, 0x0

    invoke-direct {v1, p2, p1, p0, v3}, Lk4/j;-><init>(Ljava/lang/Object;LX/g;Lk4/k;LV4/d;)V

    iput v2, v0, Lk4/i;->r:I

    new-instance p1, LX/c;

    const/4 p2, 0x1

    invoke-direct {p1, v1, v3, p2}, LX/c;-><init>(Ld5/p;LV4/d;I)V

    invoke-interface {p3, p1, v0}, LT/h;->a(Ld5/p;LX4/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    sget-object p2, LW4/a;->b:LW4/a;

    if-ne p1, p2, :cond_3

    return-object p2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to update cache config value: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SettingsCache"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method
