.class public final Lr1/c;
.super Ljava/lang/Object;


# static fields
.field public static final g:Lr1/c;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lr1/c;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lr1/c;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v0, Lr1/c;->g:Lr1/c;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr1/c;->a:I

    iput p2, p0, Lr1/c;->b:I

    iput p3, p0, Lr1/c;->c:I

    iput p4, p0, Lr1/c;->d:I

    iput p5, p0, Lr1/c;->e:I

    iput-object p6, p0, Lr1/c;->f:Landroid/graphics/Typeface;

    return-void
.end method
