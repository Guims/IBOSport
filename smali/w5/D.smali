.class public final Lw5/D;
.super Lw5/F;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Lw5/t;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public constructor <init>([BLw5/t;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/D;->a:[B

    iput-object p2, p0, Lw5/D;->b:Lw5/t;

    iput p3, p0, Lw5/D;->c:I

    iput p4, p0, Lw5/D;->d:I

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget v0, p0, Lw5/D;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final contentType()Lw5/t;
    .locals 1

    iget-object v0, p0, Lw5/D;->b:Lw5/t;

    return-object v0
.end method

.method public final writeTo(LK5/h;)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lw5/D;->d:I

    iget v1, p0, Lw5/D;->c:I

    iget-object v2, p0, Lw5/D;->a:[B

    invoke-interface {p1, v2, v0, v1}, LK5/h;->write([BII)LK5/h;

    return-void
.end method
