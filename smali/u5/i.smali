.class public abstract Lu5/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:LE1/a;

.field public static final c:LE1/a;

.field public static final d:LE1/a;

.field public static final e:LE1/a;

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    const/16 v1, 0x64

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lr5/a;->j(Ljava/lang/String;II)I

    move-result v0

    sput v0, Lu5/i;->a:I

    new-instance v0, LE1/a;

    const-string v1, "PERMIT"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu5/i;->b:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "TAKEN"

    invoke-direct {v0, v1, v3}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu5/i;->c:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "BROKEN"

    invoke-direct {v0, v1, v3}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu5/i;->d:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v3}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu5/i;->e:LE1/a;

    const-string v0, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lr5/a;->j(Ljava/lang/String;II)I

    move-result v0

    sput v0, Lu5/i;->f:I

    return-void
.end method
