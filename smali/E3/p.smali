.class public final synthetic LE3/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LE3/p;->a:I

    iput-object p2, p0, LE3/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    iget v0, p0, LE3/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE3/p;->b:Ljava/lang/Object;

    check-cast v0, LA/j;

    iget-object v0, v0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LM3/c;

    iget-object v1, v0, LM3/c;->f:Ljava/lang/Object;

    check-cast v1, LE1/a;

    iget-object v0, v0, LM3/c;->b:Ljava/lang/Object;

    check-cast v0, LM3/e;

    iget-object v2, v1, LE1/a;->q:Ljava/lang/String;

    const-string v3, "FirebaseCrashlytics"

    const-string v4, "Settings query params were: "

    const-string v5, "Requesting settings from "

    invoke-static {}, LF3/d;->b()V

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v0}, LE1/a;->c(LM3/e;)Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, LJ/l;

    invoke-direct {v8, v2, v7}, LJ/l;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v9, "User-Agent"

    const-string v10, "Crashlytics Android SDK/19.4.3"

    invoke-virtual {v8, v9, v10}, LJ/l;->Q(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v10, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    invoke-virtual {v8, v9, v10}, LJ/l;->Q(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v0}, LE1/a;->b(LJ/l;LM3/e;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v3, v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-virtual {v8}, LJ/l;->G()LE1/e;

    move-result-object v0

    invoke-virtual {v1, v0}, LE1/a;->d(LE1/e;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Settings request failed."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v6

    :pswitch_0
    iget-object v0, p0, LE3/p;->b:Ljava/lang/Object;

    check-cast v0, LE3/q;

    iget-object v0, v0, LE3/q;->f:LE3/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LF3/d;->a()V

    iget-object v1, v0, LE3/n;->c:LA/j;

    iget-object v2, v1, LA/j;->r:Ljava/lang/Object;

    check-cast v2, LK3/c;

    iget-object v3, v1, LA/j;->q:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/io/File;

    iget-object v2, v2, LK3/c;->r:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_4

    iget-object v1, v0, LE3/n;->m:LD5/g;

    iget-object v1, v1, LD5/g;->b:Ljava/lang/Object;

    check-cast v1, LK3/a;

    invoke-virtual {v1}, LK3/a;->c()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    :cond_2
    if-eqz v4, :cond_3

    iget-object v0, v0, LE3/n;->j:LB3/b;

    invoke-virtual {v0, v4}, LB3/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Found previous crash marker."

    invoke-static {v2, v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    iget-object v0, v1, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LK3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, LK3/c;->r:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
