.class public final Lv0/b;
.super Ljava/lang/Object;


# static fields
.field public static final f:LI0/D;


# instance fields
.field public final a:LI0/q;

.field public final b:Landroidx/media3/common/Format;

.field public final c:Lk0/z;

.field public final d:Lf1/k;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LI0/D;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv0/b;->f:LI0/D;

    return-void
.end method

.method public constructor <init>(LI0/q;Landroidx/media3/common/Format;Lk0/z;Lf1/k;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/b;->a:LI0/q;

    iput-object p2, p0, Lv0/b;->b:Landroidx/media3/common/Format;

    iput-object p3, p0, Lv0/b;->c:Lk0/z;

    iput-object p4, p0, Lv0/b;->d:Lf1/k;

    iput-boolean p5, p0, Lv0/b;->e:Z

    return-void
.end method
