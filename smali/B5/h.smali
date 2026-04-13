.class public final LB5/h;
.super Lw5/K;


# instance fields
.field public final synthetic b:I

.field public final q:J

.field public final r:Ljava/lang/Object;

.field public final s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LK5/i;Lw5/t;J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LB5/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB5/h;->r:Ljava/lang/Object;

    iput-object p2, p0, LB5/h;->s:Ljava/lang/Object;

    iput-wide p3, p0, LB5/h;->q:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLK5/z;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LB5/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB5/h;->r:Ljava/lang/Object;

    iput-wide p2, p0, LB5/h;->q:J

    iput-object p4, p0, LB5/h;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget v0, p0, LB5/h;->b:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, LB5/h;->q:J

    return-wide v0

    :pswitch_0
    iget-wide v0, p0, LB5/h;->q:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contentType()Lw5/t;
    .locals 2

    iget v0, p0, LB5/h;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB5/h;->s:Ljava/lang/Object;

    check-cast v0, Lw5/t;

    return-object v0

    :pswitch_0
    iget-object v0, p0, LB5/h;->r:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lw5/t;->d:Ljava/util/regex/Pattern;

    invoke-static {v0}, LH3/u0;->t(Ljava/lang/String;)Lw5/t;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final source()LK5/i;
    .locals 1

    iget v0, p0, LB5/h;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB5/h;->r:Ljava/lang/Object;

    check-cast v0, LK5/i;

    return-object v0

    :pswitch_0
    iget-object v0, p0, LB5/h;->s:Ljava/lang/Object;

    check-cast v0, LK5/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
