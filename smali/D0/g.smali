.class public final synthetic LD0/g;
.super Ljava/lang/Object;

# interfaces
.implements Lo3/e;


# instance fields
.field public final synthetic b:LD0/t;


# direct methods
.method public synthetic constructor <init>(LD0/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/g;->b:LD0/t;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 9

    iget-object v0, p0, LD0/g;->b:LD0/t;

    check-cast p1, Landroidx/media3/common/Format;

    iget-object v1, v0, LD0/t;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, LD0/t;->g:LD0/l;

    iget-boolean v2, v2, LD0/l;->e:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    iget-boolean v2, v0, LD0/t;->f:Z

    if-nez v2, :cond_6

    iget v2, p1, Landroidx/media3/common/Format;->channelCount:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    const/4 v5, 0x2

    if-le v2, v5, :cond_6

    iget-object v2, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x20

    const/4 v7, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "audio/eac3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v8, "audio/ac4"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_0

    :sswitch_2
    const-string v5, "audio/ac3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_0

    :sswitch_3
    const-string v5, "audio/eac3-joc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v4, v7

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_1
    sget v2, Lk0/C;->a:I

    if-lt v2, v6, :cond_6

    iget-object v2, v0, LD0/t;->h:LD0/o;

    if-eqz v2, :cond_6

    iget-boolean v2, v2, LD0/o;->b:Z

    if-eqz v2, :cond_6

    :goto_1
    sget v2, Lk0/C;->a:I

    if-lt v2, v6, :cond_5

    iget-object v2, v0, LD0/t;->h:LD0/o;

    if-eqz v2, :cond_5

    iget-boolean v4, v2, LD0/o;->b:Z

    if-eqz v4, :cond_5

    iget-object v2, v2, LD0/o;->a:Landroid/media/Spatializer;

    invoke-static {v2}, LD0/m;->g(Landroid/media/Spatializer;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, LD0/t;->h:LD0/o;

    iget-object v2, v2, LD0/o;->a:Landroid/media/Spatializer;

    invoke-static {v2}, LD0/m;->j(Landroid/media/Spatializer;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, LD0/t;->h:LD0/o;

    iget-object v0, v0, LD0/t;->i:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v2, v0, p1}, LD0/o;->a(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    move v3, v7

    :cond_6
    :goto_2
    monitor-exit v1

    return v3

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
