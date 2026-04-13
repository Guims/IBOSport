.class public final synthetic LG0/E;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:J

.field public final synthetic s:J

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;JJI)V
    .locals 0

    iput p7, p0, LG0/E;->b:I

    iput-object p1, p0, LG0/E;->t:Ljava/lang/Object;

    iput-object p2, p0, LG0/E;->q:Ljava/lang/String;

    iput-wide p3, p0, LG0/E;->r:J

    iput-wide p5, p0, LG0/E;->s:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, LG0/E;->b:I

    iget-object v1, p0, LG0/E;->t:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lp5/p;

    iget-object v0, v1, Lp5/p;->r:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lr0/l;

    sget v0, Lk0/C;->a:I

    iget-object v2, p0, LG0/E;->q:Ljava/lang/String;

    iget-wide v3, p0, LG0/E;->r:J

    iget-wide v5, p0, LG0/E;->s:J

    invoke-interface/range {v1 .. v6}, Lr0/l;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void

    :pswitch_0
    check-cast v1, LA/j;

    iget-object v0, v1, LA/j;->r:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LG0/I;

    sget v0, Lk0/C;->a:I

    iget-object v2, p0, LG0/E;->q:Ljava/lang/String;

    iget-wide v3, p0, LG0/E;->r:J

    iget-wide v5, p0, LG0/E;->s:J

    invoke-interface/range {v1 .. v6}, LG0/I;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
