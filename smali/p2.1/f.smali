.class public final synthetic Lp2/f;
.super Ljava/lang/Object;

# interfaces
.implements Lr2/b;
.implements Lk0/n;
.implements Ly0/z;
.implements Lz4/A;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lp2/f;->b:I

    iput-object p2, p0, Lp2/f;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lq0/b;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, Lp2/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lp2/f;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lq0/b;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lp2/f;->b:I

    iput-object p2, p0, Lp2/f;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Lp2/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Format;

    check-cast p1, Ly0/o;

    iget-object v1, p1, Ly0/o;->b:Ljava/lang/String;

    iget-object v2, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {v0}, Ly0/A;->b(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    invoke-virtual {p1, v0, v3}, Ly0/o;->c(Landroidx/media3/common/Format;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v3
.end method

.method public execute()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lp2/f;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp2/f;->q:Ljava/lang/Object;

    check-cast v0, LK1/c;

    iget-object v1, v0, LK1/c;->r:Ljava/lang/Object;

    check-cast v1, Lq2/d;

    check-cast v1, Lq2/h;

    new-instance v2, Lq0/h;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lq0/h;-><init>(I)V

    invoke-virtual {v1, v2}, Lq2/h;->f(Lq2/f;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj2/j;

    iget-object v3, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v3, LJ/l;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5, v4}, LJ/l;->a0(Lj2/j;IZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lp2/f;->q:Ljava/lang/Object;

    check-cast v0, LM3/c;

    iget-object v0, v0, LM3/c;->i:Ljava/lang/Object;

    check-cast v0, Lq2/c;

    check-cast v0, Lq2/h;

    invoke-virtual {v0}, Lq2/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "DELETE FROM log_event_dropped"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lq2/h;->q:Ls2/a;

    invoke-interface {v0}, Ls2/a;->f()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lp2/f;->q:Ljava/lang/Object;

    check-cast v0, Lq2/d;

    check-cast v0, Lq2/h;

    iget-object v1, v0, Lq2/h;->q:Ls2/a;

    invoke-interface {v1}, Ls2/a;->f()J

    move-result-wide v1

    iget-object v3, v0, Lq2/h;->s:Lq2/a;

    iget-wide v3, v3, Lq2/a;->d:J

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Lq2/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v4, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    int-to-long v6, v4

    sget-object v4, Lm2/c;->r:Lm2/c;

    invoke-virtual {v0, v6, v7, v4, v5}, Lq2/h;->r(JLm2/c;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v0, "events"

    const-string v2, "timestamp_ms < ?"

    invoke-virtual {v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lp2/f;->q:Ljava/lang/Object;

    check-cast v0, Lz4/f;

    iget-object v1, v0, Lz4/f;->W0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lz4/f;->T(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lp2/f;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp2/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/VideoSize;

    check-cast p1, Lq0/c;

    invoke-interface {p1, v0}, Lq0/c;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    iget p1, v0, Landroidx/media3/common/VideoSize;->width:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lp2/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/PlaybackException;

    check-cast p1, Lq0/c;

    invoke-interface {p1, v0}, Lq0/c;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lp2/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/DecoderCounters;

    check-cast p1, Lq0/c;

    invoke-interface {p1, v0}, Lq0/c;->onVideoDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lp2/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/A;

    check-cast p1, Lq0/c;

    invoke-interface {p1, v0}, Lq0/c;->f(Landroidx/media3/exoplayer/source/A;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
