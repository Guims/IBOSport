.class public final LV/e;
.super Le5/h;

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LV/f;


# direct methods
.method public synthetic constructor <init>(LV/f;I)V
    .locals 0

    iput p2, p0, LV/e;->b:I

    iput-object p1, p0, LV/e;->q:LV/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le5/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LV/e;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, LV/f;->f:LW3/e;

    iget-object v1, p0, LV/e;->q:LV/f;

    monitor-enter v0

    :try_start_0
    sget-object v2, LV/f;->e:Ljava/util/LinkedHashSet;

    iget-object v1, v1, LV/f;->d:LS4/g;

    invoke-virtual {v1}, LS4/g;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK5/x;

    iget-object v1, v1, LK5/x;->b:LK5/j;

    invoke-virtual {v1}, LK5/j;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-object v0, LS4/i;->a:LS4/i;

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :pswitch_0
    iget-object v0, p0, LV/e;->q:LV/f;

    iget-object v0, v0, LV/f;->c:LX/e;

    invoke-virtual {v0}, LX/e;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK5/x;

    invoke-static {v1}, LL5/c;->a(LK5/x;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v0, v1, LK5/x;->b:LK5/j;

    invoke-virtual {v0}, LK5/j;->o()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lh3/e;->t(Ljava/lang/String;Z)LK5/x;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OkioStorage requires absolute paths, but did not get an absolute path from producePath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", instead got "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
