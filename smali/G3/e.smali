.class public final LG3/e;
.super Ljava/lang/Object;

# interfaces
.implements LG3/j;


# static fields
.field public static final c:Lx2/f;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx2/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lx2/f;-><init>(I)V

    sput-object v0, LG3/e;->c:Lx2/f;

    return-void
.end method

.method public constructor <init>(LK3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG3/e;->a:Ljava/lang/Object;

    sget-object p1, LG3/e;->c:Lx2/f;

    iput-object p1, p0, LG3/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LG3/e;->a:Ljava/lang/Object;

    iput-object p1, p0, LG3/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(LG3/i;I)V
    .locals 4

    iget-object v0, p0, LG3/e;->b:Ljava/lang/Object;

    check-cast v0, [I

    :try_start_0
    iget-object v1, p0, LG3/e;->a:Ljava/lang/Object;

    check-cast v1, [B

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {p1, v1, v3, p2}, LG3/i;->read([BII)I

    aget v1, v0, v2

    add-int/2addr v1, p2

    aput v1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p2
.end method
