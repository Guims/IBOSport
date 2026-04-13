.class public final LW1/d;
.super Ljava/lang/Object;

# interfaces
.implements LW1/b;


# static fields
.field public static final q:LW1/d;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW1/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LW1/d;-><init>(I)V

    sput-object v0, LW1/d;->q:LW1/d;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LW1/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LK1/D;LI1/j;)LK1/D;
    .locals 4

    iget p2, p0, LW1/d;->b:I

    packed-switch p2, :pswitch_data_0

    invoke-interface {p1}, LK1/D;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LV1/b;

    iget-object p1, p1, LV1/b;->b:LA1/f;

    iget-object p1, p1, LA1/f;->b:Ljava/lang/Object;

    check-cast p1, LV1/g;

    iget-object p1, p1, LV1/g;->a:LG1/d;

    iget-object p1, p1, LG1/d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance p2, LR1/C;

    sget-object v0, Ld2/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LD5/A;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, LD5/A;->c:Ljava/lang/Object;

    iput v2, v0, LD5/A;->a:I

    iput v3, v0, LD5/A;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, LD5/A;->a:I

    if-nez v1, :cond_1

    iget v1, v0, LD5/A;->b:I

    iget-object v0, v0, LD5/A;->c:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p1, v0

    :goto_1
    invoke-direct {p2, p1}, LR1/C;-><init>([B)V

    return-object p2

    :pswitch_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
