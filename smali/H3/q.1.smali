.class public final LH3/q;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/q;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/q;->a:LH3/q;

    const-string v0, "pc"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/q;->b:LR3/c;

    const-string v0, "symbol"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/q;->c:LR3/c;

    const-string v0, "file"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/q;->d:LR3/c;

    const-string v0, "offset"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/q;->e:LR3/c;

    const-string v0, "importance"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/q;->f:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, LH3/A0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/Y;

    iget-wide v0, p1, LH3/Y;->a:J

    sget-object v2, LH3/q;->b:LR3/c;

    invoke-interface {p2, v2, v0, v1}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, LH3/q;->c:LR3/c;

    iget-object v1, p1, LH3/Y;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/q;->d:LR3/c;

    iget-object v1, p1, LH3/Y;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/q;->e:LR3/c;

    iget-wide v1, p1, LH3/Y;->d:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, LH3/q;->f:LR3/c;

    iget p1, p1, LH3/Y;->e:I

    invoke-interface {p2, v0, p1}, LR3/e;->c(LR3/c;I)LR3/e;

    return-void
.end method
