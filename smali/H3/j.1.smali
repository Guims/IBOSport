.class public final LH3/j;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/j;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;

.field public static final g:LR3/c;

.field public static final h:LR3/c;

.field public static final i:LR3/c;

.field public static final j:LR3/c;

.field public static final k:LR3/c;

.field public static final l:LR3/c;

.field public static final m:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/j;->a:LH3/j;

    const-string v0, "generator"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/j;->b:LR3/c;

    const-string v0, "identifier"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/j;->c:LR3/c;

    const-string v0, "appQualitySessionId"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/j;->d:LR3/c;

    const-string v0, "startedAt"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/j;->e:LR3/c;

    const-string v0, "endedAt"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/j;->f:LR3/c;

    const-string v0, "crashed"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/j;->g:LR3/c;

    const-string v0, "app"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/j;->h:LR3/c;

    const-string v0, "user"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/j;->i:LR3/c;

    const-string v0, "os"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/j;->j:LR3/c;

    const-string v0, "device"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/j;->k:LR3/c;

    const-string v0, "events"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/j;->l:LR3/c;

    const-string v0, "generatorType"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/j;->m:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, LH3/N0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/J;

    iget-object v0, p1, LH3/J;->a:Ljava/lang/String;

    sget-object v1, LH3/j;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    iget-object v0, p1, LH3/J;->b:Ljava/lang/String;

    sget-object v1, LH3/O0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sget-object v1, LH3/j;->c:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/j;->d:LR3/c;

    iget-object v1, p1, LH3/J;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/j;->e:LR3/c;

    iget-wide v1, p1, LH3/J;->d:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, LH3/j;->f:LR3/c;

    iget-object v1, p1, LH3/J;->e:Ljava/lang/Long;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/j;->g:LR3/c;

    iget-boolean v1, p1, LH3/J;->f:Z

    invoke-interface {p2, v0, v1}, LR3/e;->b(LR3/c;Z)LR3/e;

    sget-object v0, LH3/j;->h:LR3/c;

    iget-object v1, p1, LH3/J;->g:LH3/v0;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/j;->i:LR3/c;

    iget-object v1, p1, LH3/J;->h:LH3/M0;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/j;->j:LR3/c;

    iget-object v1, p1, LH3/J;->i:LH3/L0;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/j;->k:LR3/c;

    iget-object v1, p1, LH3/J;->j:LH3/w0;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/j;->l:LR3/c;

    iget-object v1, p1, LH3/J;->k:Ljava/util/List;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/j;->m:LR3/c;

    iget p1, p1, LH3/J;->l:I

    invoke-interface {p2, v0, p1}, LR3/e;->c(LR3/c;I)LR3/e;

    return-void
.end method
