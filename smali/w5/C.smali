.class public final Lw5/C;
.super Lw5/F;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw5/t;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lw5/t;I)V
    .locals 0

    iput p3, p0, Lw5/C;->a:I

    iput-object p1, p0, Lw5/C;->c:Ljava/lang/Object;

    iput-object p2, p0, Lw5/C;->b:Lw5/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget v0, p0, Lw5/C;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw5/C;->c:Ljava/lang/Object;

    check-cast v0, LK5/j;

    invoke-virtual {v0}, LK5/j;->b()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_0
    iget-object v0, p0, Lw5/C;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contentType()Lw5/t;
    .locals 1

    iget v0, p0, Lw5/C;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw5/C;->b:Lw5/t;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lw5/C;->b:Lw5/t;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(LK5/h;)V
    .locals 4

    iget v0, p0, Lw5/C;->a:I

    iget-object v1, p0, Lw5/C;->c:Ljava/lang/Object;

    const-string v2, "sink"

    invoke-static {p1, v2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    check-cast v1, LK5/j;

    invoke-interface {p1, v1}, LK5/h;->p(LK5/j;)LK5/h;

    return-void

    :pswitch_0
    check-cast v1, Ljava/io/File;

    sget-object v0, LK5/v;->a:Ljava/util/logging/Logger;

    const-string v0, "<this>"

    invoke-static {v1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK5/c;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v1, LK5/H;->d:LK5/G;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, LK5/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    :try_start_0
    invoke-interface {p1, v0}, LK5/h;->e(LK5/F;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LK5/c;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, La/a;->h(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
