.class public final LT/m;
.super Le5/h;

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LT/I;


# direct methods
.method public synthetic constructor <init>(LT/I;I)V
    .locals 0

    iput p2, p0, LT/m;->b:I

    iput-object p1, p0, LT/m;->q:LT/I;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le5/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 7

    iget v0, p0, LT/m;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/m;->q:LT/I;

    iget-object v0, v0, LT/I;->a:LV/f;

    const-string v1, "There are multiple DataStores active for the same file: "

    iget-object v2, v0, LV/f;->d:LS4/g;

    invoke-virtual {v2}, LS4/g;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK5/x;

    iget-object v2, v2, LK5/x;->b:LK5/j;

    invoke-virtual {v2}, LK5/j;->o()Ljava/lang/String;

    move-result-object v2

    sget-object v3, LV/f;->f:LW3/e;

    monitor-enter v3

    :try_start_0
    sget-object v4, LV/f;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    new-instance v1, LV/i;

    iget-object v2, v0, LV/f;->a:LK5/n;

    iget-object v3, v0, LV/f;->d:LS4/g;

    invoke-virtual {v3}, LS4/g;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK5/x;

    iget-object v4, v0, LV/f;->b:Ld5/p;

    iget-object v5, v0, LV/f;->d:LS4/g;

    invoke-virtual {v5}, LS4/g;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK5/x;

    iget-object v6, v0, LV/f;->a:LK5/n;

    invoke-interface {v4, v5, v6}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LT/S;

    new-instance v5, LV/e;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, LV/e;-><init>(LV/f;I)V

    invoke-direct {v1, v2, v3, v4, v5}, LV/i;-><init>(LK5/n;LK5/x;LT/S;LV/e;)V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore\'s active on the same file (by confirming that the scope is cancelled)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    throw v0

    :pswitch_0
    iget-object v0, p0, LT/m;->q:LT/I;

    iget-object v0, v0, LT/I;->j:LS4/g;

    invoke-virtual {v0}, LS4/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV/i;

    iget-object v0, v0, LV/i;->c:LT/S;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
