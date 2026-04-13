.class public final Lg4/S;
.super Landroid/os/Handler;


# instance fields
.field public a:Z

.field public b:J

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg4/S;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const-string v0, "SessionLifecycleService"

    const-string v1, "Broadcasting new session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lv3/e;->c()Lv3/e;

    move-result-object v0

    const-class v1, Lg4/r;

    invoke-virtual {v0, v1}, Lv3/e;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg4/r;

    check-cast v0, Lg4/i;

    iget-object v0, v0, Lg4/i;->k:LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg4/J;

    invoke-static {}, Lv3/e;->c()Lv3/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lv3/e;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg4/r;

    check-cast v1, Lg4/i;

    iget-object v1, v1, Lg4/i;->m:LR4/a;

    invoke-interface {v1}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg4/N;

    iget-object v1, v1, Lg4/N;->e:Lg4/G;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lg4/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lg4/M;->e:LV4/i;

    invoke-static {v3}, Lm5/w;->a(LV4/i;)Lr5/e;

    move-result-object v3

    new-instance v4, Lg4/K;

    invoke-direct {v4, v0, v1, v2}, Lg4/K;-><init>(Lg4/M;Lg4/G;LV4/d;)V

    invoke-static {v3, v4}, Lm5/w;->g(Lm5/u;Ld5/p;)Lm5/f0;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg4/S;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/os/Messenger;

    const-string v4, "it"

    invoke-static {v3, v4}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lg4/S;->b(Landroid/os/Messenger;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string v0, "currentSession"

    invoke-static {v0}, Le5/g;->k(Ljava/lang/String;)V

    throw v2
.end method

.method public final b(Landroid/os/Messenger;)V
    .locals 4

    const-string v0, "SessionLifecycleService"

    :try_start_0
    iget-boolean v1, p0, Lg4/S;->a:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-class v3, Lg4/r;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {}, Lv3/e;->c()Lv3/e;

    move-result-object v1

    invoke-virtual {v1, v3}, Lv3/e;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg4/r;

    check-cast v1, Lg4/i;

    iget-object v1, v1, Lg4/i;->m:LR4/a;

    invoke-interface {v1}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg4/N;

    iget-object v1, v1, Lg4/N;->e:Lg4/G;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lg4/G;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lg4/S;->d(Landroid/os/Messenger;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p1, "currentSession"

    invoke-static {p1}, Le5/g;->k(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Lv3/e;->c()Lv3/e;

    move-result-object v1

    invoke-virtual {v1, v3}, Lv3/e;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg4/r;

    check-cast v1, Lg4/i;

    iget-object v1, v1, Lg4/i;->j:LR4/a;

    invoke-interface {v1}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg4/E;

    iget-object v1, v1, Lg4/E;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg4/u;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lg4/u;->a:Ljava/lang/String;

    :cond_2
    const-string v1, "App has not yet foregrounded. Using previously stored session."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, v2}, Lg4/S;->d(Landroid/os/Messenger;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-void

    :goto_0
    const-string v1, "Failed to send session to client."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final c()V
    .locals 12

    const-string v1, "SessionLifecycleService"

    const-class v0, Lg4/r;

    :try_start_0
    invoke-static {}, Lv3/e;->c()Lv3/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lv3/e;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg4/r;

    check-cast v2, Lg4/i;

    iget-object v2, v2, Lg4/i;->m:LR4/a;

    invoke-interface {v2}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg4/N;

    iget v3, v2, Lg4/N;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lg4/N;->d:I

    new-instance v4, Lg4/G;

    if-nez v3, :cond_0

    iget-object v3, v2, Lg4/N;->c:Ljava/lang/String;

    :goto_0
    move-object v5, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lg4/N;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_1
    iget-object v6, v2, Lg4/N;->c:Ljava/lang/String;

    iget v7, v2, Lg4/N;->d:I

    iget-object v3, v2, Lg4/N;->a:Lg4/V;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct/range {v4 .. v9}, Lg4/G;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    iput-object v4, v2, Lg4/N;->e:Lg4/G;

    const-string v2, "Generated new session."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lg4/S;->a()V

    invoke-static {}, Lv3/e;->c()Lv3/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lv3/e;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg4/r;

    check-cast v2, Lg4/i;

    iget-object v2, v2, Lg4/i;->j:LR4/a;

    invoke-interface {v2}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg4/E;

    invoke-static {}, Lv3/e;->c()Lv3/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lv3/e;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg4/r;

    check-cast v0, Lg4/i;

    iget-object v0, v0, Lg4/i;->m:LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg4/N;

    iget-object v0, v0, Lg4/N;->e:Lg4/G;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lg4/G;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "sessionId"

    invoke-static {v0, v4}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v2, Lg4/E;->a:LV4/i;

    invoke-static {v4}, Lm5/w;->a(LV4/i;)Lr5/e;

    move-result-object v4

    new-instance v5, LT/d;

    const/4 v6, 0x4

    invoke-direct {v5, v2, v0, v3, v6}, LT/d;-><init>(Ljava/lang/Object;Ljava/io/Serializable;LV4/d;I)V

    invoke-static {v4, v5}, Lm5/w;->g(Lm5/u;Ld5/p;)Lm5/f0;

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const-string v0, "currentSession"

    invoke-static {v0}, Le5/g;->k(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v2, "Failed to generate new session."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final d(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 4

    const-string v0, "SessionLifecycleService"

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SessionUpdateExtra"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p2, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to push new session to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Removing dead client from list: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lg4/S;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const-string v0, "msg"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lg4/S;->b:J

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/16 v1, 0x2e

    const-string v2, "SessionLifecycleService"

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring old message from "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " which is older than "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lg4/S;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received unexpected event from the SessionLifecycleClient: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lg4/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string v3, "msg.replyTo"

    invoke-static {v0, v3}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lg4/S;->b(Landroid/os/Messenger;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Client "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " bound at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ". Clients: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity backgrounding at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v0

    iput-wide v0, p0, Lg4/S;->b:J

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Activity foregrounding at "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lg4/S;->a:Z

    if-nez v0, :cond_4

    const-string v0, "Cold start detected."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lg4/S;->a:Z

    invoke-virtual {p0}, Lg4/S;->c()V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v0

    iget-wide v4, p0, Lg4/S;->b:J

    sub-long/2addr v0, v4

    invoke-static {}, Lv3/e;->c()Lv3/e;

    move-result-object v4

    const-class v5, Lg4/r;

    invoke-virtual {v4, v5}, Lv3/e;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg4/r;

    check-cast v4, Lg4/i;

    iget-object v4, v4, Lg4/i;->h:LR4/a;

    invoke-interface {v4}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk4/h;

    iget-object v5, v4, Lk4/h;->a:Lk4/m;

    invoke-interface {v5}, Lk4/m;->c()Ll5/a;

    move-result-object v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_5

    iget-wide v8, v5, Ll5/a;->b:J

    sget v5, Ll5/a;->s:I

    cmp-long v5, v8, v6

    if-lez v5, :cond_5

    invoke-static {v8, v9}, Ll5/a;->b(J)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    iget-object v4, v4, Lk4/h;->b:Lk4/m;

    invoke-interface {v4}, Lk4/m;->c()Ll5/a;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-wide v8, v4, Ll5/a;->b:J

    sget v4, Ll5/a;->s:I

    cmp-long v4, v8, v6

    if-lez v4, :cond_6

    invoke-static {v8, v9}, Ll5/a;->b(J)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    sget v4, Ll5/a;->s:I

    const/16 v4, 0x1e

    sget-object v5, Ll5/c;->t:Ll5/c;

    invoke-static {v4, v5}, La/a;->P(ILl5/c;)J

    move-result-wide v8

    :goto_0
    long-to-int v4, v8

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_7

    invoke-static {v8, v9}, Ll5/a;->b(J)Z

    move-result v4

    if-nez v4, :cond_7

    shr-long v3, v8, v3

    goto :goto_1

    :cond_7
    sget-object v3, Ll5/c;->r:Ll5/c;

    invoke-static {v8, v9, v3}, Ll5/a;->c(JLl5/c;)J

    move-result-wide v3

    :goto_1
    cmp-long v0, v0, v3

    if-lez v0, :cond_8

    const-string v0, "Session too long in background. Creating new session."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lg4/S;->c()V

    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v0

    iput-wide v0, p0, Lg4/S;->b:J

    return-void
.end method
