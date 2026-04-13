.class public final LE0/l;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    iput p1, p0, LE0/l;->a:I

    iput-wide p2, p0, LE0/l;->b:J

    return-void
.end method

.method public synthetic constructor <init>(IZJ)V
    .locals 0

    iput p1, p0, LE0/l;->a:I

    iput-wide p3, p0, LE0/l;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(LI0/r;Lk0/u;)LE0/l;
    .locals 3

    iget-object v0, p1, Lk0/u;->a:[B

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, LI0/r;->o([BII)V

    invoke-virtual {p1, v2}, Lk0/u;->G(I)V

    invoke-virtual {p1}, Lk0/u;->g()I

    move-result p0

    invoke-virtual {p1}, Lk0/u;->l()J

    move-result-wide v0

    new-instance p1, LE0/l;

    invoke-direct {p1, p0, v2, v0, v1}, LE0/l;-><init>(IZJ)V

    return-object p1
.end method


# virtual methods
.method public a()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, LE0/l;->a:I

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
