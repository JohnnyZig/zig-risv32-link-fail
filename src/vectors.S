	.section .ram.vector_table
	.balign 0x100
	.type vector_table, @function
vector_table:
	.option push
	.option norvc
	j exception_handler	/* 0 exception handler */
	j interrupt_handler	/* 1 */
	j interrupt_handler	/* 2 */
	j interrupt_handler	/* 3 */
	j interrupt_handler	/* 4 */
	j interrupt_handler	/* 5 */
	j interrupt_handler	/* 6 */
	j interrupt_handler	/* 7 */
	j interrupt_handler	/* 8 */
	j interrupt_handler	/* 9 */
	j interrupt_handler	/* 10 */
	j interrupt_handler	/* 11 */
	j interrupt_handler	/* 12 */
	j interrupt_handler	/* 13 */
	j interrupt_handler	/* 14 */
	j interrupt_handler	/* 15 */
	j interrupt_handler	/* 16 */
	j interrupt_handler	/* 17 */
	j interrupt_handler	/* 18 */
	j interrupt_handler	/* 19 */
	j interrupt_handler	/* 20 */
	j interrupt_handler	/* 21 */
	j interrupt_handler	/* 22 */
	j interrupt_handler	/* 23 */
	j exception_handler	/* 24 */
	j exception_handler	/* 25 */
	j exception_handler	/* 26 */
	j interrupt_handler	/* 27 */
	j interrupt_handler	/* 28 */
	j interrupt_handler	/* 29 */
	j interrupt_handler	/* 30 */
	j interrupt_handler	/* 31 */
	.option pop

	.type _exception_handler, @function
_exception_handler:
	j _exception_handler

	.section .ram_text, "ax", %progbits
_interrupt_handler:
	j _interrupt_handler
