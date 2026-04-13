.class public abstract Lo5/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lo5/j;

.field public static final b:I

.field public static final c:I

.field public static final d:LE1/a;

.field public static final e:LE1/a;

.field public static final f:LE1/a;

.field public static final g:LE1/a;

.field public static final h:LE1/a;

.field public static final i:LE1/a;

.field public static final j:LE1/a;

.field public static final k:LE1/a;

.field public static final l:LE1/a;

.field public static final m:LE1/a;

.field public static final n:LE1/a;

.field public static final o:LE1/a;

.field public static final p:LE1/a;

.field public static final q:LE1/a;

.field public static final r:LE1/a;

.field public static final s:LE1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lo5/j;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lo5/j;-><init>(JLo5/j;Lo5/b;I)V

    sput-object v0, Lo5/d;->a:Lo5/j;

    const-string v0, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v1, 0x20

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lr5/a;->j(Ljava/lang/String;II)I

    move-result v0

    sput v0, Lo5/d;->b:I

    const-string v0, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lr5/a;->j(Ljava/lang/String;II)I

    move-result v0

    sput v0, Lo5/d;->c:I

    new-instance v0, LE1/a;

    const-string v1, "BUFFERED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->d:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->e:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->f:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->g:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "POISONED"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->h:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->i:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->j:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->k:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->l:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->m:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->n:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->o:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->p:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->q:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->r:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo5/d;->s:LE1/a;

    return-void
.end method
