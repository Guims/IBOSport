.class public final LK5/f;
.super Ljava/io/OutputStream;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LK5/h;


# direct methods
.method public synthetic constructor <init>(LK5/h;I)V
    .locals 0

    iput p2, p0, LK5/f;->b:I

    iput-object p1, p0, LK5/f;->q:LK5/h;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    return-void
.end method

.method private final b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget v0, p0, LK5/f;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK5/f;->q:LK5/h;

    check-cast v0, LK5/y;

    invoke-virtual {v0}, LK5/y;->close()V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final flush()V
    .locals 2

    iget v0, p0, LK5/f;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK5/f;->q:LK5/h;

    check-cast v0, LK5/y;

    iget-boolean v1, v0, LK5/y;->r:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, LK5/y;->flush()V

    :cond_0
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LK5/f;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LK5/f;->q:LK5/h;

    check-cast v1, LK5/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LK5/f;->q:LK5/h;

    check-cast v1, LK5/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final write(I)V
    .locals 2

    iget v0, p0, LK5/f;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK5/f;->q:LK5/h;

    check-cast v0, LK5/y;

    iget-boolean v1, v0, LK5/y;->r:Z

    if-nez v1, :cond_0

    iget-object v1, v0, LK5/y;->q:LK5/g;

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, LK5/g;->G(I)V

    invoke-virtual {v0}, LK5/y;->a()LK5/h;

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, LK5/f;->q:LK5/h;

    check-cast v0, LK5/g;

    invoke-virtual {v0, p1}, LK5/g;->G(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final write([BII)V
    .locals 2

    iget v0, p0, LK5/f;->b:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "data"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LK5/f;->q:LK5/h;

    check-cast v0, LK5/y;

    iget-boolean v1, v0, LK5/y;->r:Z

    if-nez v1, :cond_0

    iget-object v1, v0, LK5/y;->q:LK5/g;

    invoke-virtual {v1, p1, p2, p3}, LK5/g;->write([BII)V

    invoke-virtual {v0}, LK5/y;->a()LK5/h;

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string v0, "data"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LK5/f;->q:LK5/h;

    check-cast v0, LK5/g;

    invoke-virtual {v0, p1, p2, p3}, LK5/g;->write([BII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
