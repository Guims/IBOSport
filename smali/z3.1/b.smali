.class public final synthetic Lz3/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Runnable;

.field public final synthetic r:Lv0/f;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lv0/f;I)V
    .locals 0

    iput p3, p0, Lz3/b;->b:I

    iput-object p1, p0, Lz3/b;->q:Ljava/lang/Runnable;

    iput-object p2, p0, Lz3/b;->r:Lv0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lz3/b;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lz3/b;->q:Ljava/lang/Runnable;

    iget-object v1, p0, Lz3/b;->r:Lv0/f;

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, v1, Lv0/f;->b:Ljava/lang/Object;

    check-cast v0, Lz3/h;

    sget-object v2, Lo/g;->v:Ljava/lang/Object;

    sget-object v3, Lo/g;->u:Lcom/bumptech/glide/d;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Lcom/bumptech/glide/d;->d(Lo/g;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lo/g;->e(Lo/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Lv0/f;->j(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lz3/b;->q:Ljava/lang/Runnable;

    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lz3/b;->r:Lv0/f;

    invoke-virtual {v1, v0}, Lv0/f;->j(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lz3/b;->q:Ljava/lang/Runnable;

    :try_start_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    iget-object v1, p0, Lz3/b;->r:Lv0/f;

    invoke-virtual {v1, v0}, Lv0/f;->j(Ljava/lang/Exception;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
