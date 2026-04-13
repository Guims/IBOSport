.class public final synthetic Lz3/c;
.super Ljava/lang/Object;

# interfaces
.implements Lz3/g;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lz3/f;

.field public final synthetic r:Ljava/lang/Runnable;

.field public final synthetic s:J

.field public final synthetic t:J

.field public final synthetic u:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public synthetic constructor <init>(Lz3/f;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;I)V
    .locals 0

    iput p8, p0, Lz3/c;->b:I

    iput-object p1, p0, Lz3/c;->q:Lz3/f;

    iput-object p2, p0, Lz3/c;->r:Ljava/lang/Runnable;

    iput-wide p3, p0, Lz3/c;->s:J

    iput-wide p5, p0, Lz3/c;->t:J

    iput-object p7, p0, Lz3/c;->u:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lv0/f;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8

    iget v0, p0, Lz3/c;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lz3/c;->q:Lz3/f;

    iget-object v1, v0, Lz3/f;->q:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lz3/d;

    const/4 v3, 0x2

    iget-object v4, p0, Lz3/c;->r:Ljava/lang/Runnable;

    invoke-direct {v2, v0, v4, p1, v3}, Lz3/d;-><init>(Lz3/f;Ljava/lang/Runnable;Lv0/f;I)V

    iget-wide v3, p0, Lz3/c;->s:J

    iget-wide v5, p0, Lz3/c;->t:J

    iget-object v7, p0, Lz3/c;->u:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lz3/c;->q:Lz3/f;

    iget-object v1, v0, Lz3/f;->q:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lz3/d;

    const/4 v3, 0x0

    iget-object v4, p0, Lz3/c;->r:Ljava/lang/Runnable;

    invoke-direct {v2, v0, v4, p1, v3}, Lz3/d;-><init>(Lz3/f;Ljava/lang/Runnable;Lv0/f;I)V

    iget-wide v3, p0, Lz3/c;->s:J

    iget-wide v5, p0, Lz3/c;->t:J

    iget-object v7, p0, Lz3/c;->u:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
